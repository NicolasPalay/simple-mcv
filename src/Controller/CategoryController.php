<?php

namespace App\Controller;

use App\Model\CategoryManager;

class CategoryController extends AbstractController
{
    /**
     * List Categories
     */
    public function index(): string
    {
        $categoryManager = new CategoryManager();
        $categories = $categoryManager->selectAll('name');

        return $this->twig->render('Category/index.html.twig', ['categories' => $categories]);
    }

    /**
     * Show informations for a specific Category
     */
    public function show(int $id): string
    {
        $categoryManager  = new CategoryManager();
        $category = $categoryManager->selectOneById($id);

        return $this->twig->render('Category/show.html.twig', ['category' => $category]);
    }

    /**
     * Edit a specific Category
     */
    public function edit(int $id): ?string
    {
        $categoryManager = new CategoryManager();
        $category = $categoryManager->selectOneById($id);

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $category = array_map('trim', $_POST);

            // TODO validations (length, format...)

            // if validation is ok, update and redirection
            $categoryManager->update($category);

            header('Location: /category/show?id=' . $id);

            // we are redirecting so we don't want any content rendered
            return null;
        }

        return $this->twig->render('Category/edit.html.twig', [
            'category' => $category,
        ]);
    }

    /**
     * Add a new Category
     */
    public function add(): ?string
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            // clean $_POST data
            $category= array_map('trim', $_POST);
            // TODO validations (length, format...)
            $error=[];
            if(!isset($_POST['name']) || trim($_POST['name'])=== "")
            {
                $error[]="null";
            }
            // if validation is ok, insert and redirection
            if(empty($error)){
                $categoryManager = new CategoryManager();
                $id = $categoryManager->insert($category);

                header('Location:/category/show?id=' . $id);
                return null;}
        }

        return $this->twig->render('Category/add.html.twig',[
            'errors' => $error
        ]);
    }

    /**
     * Delete a specific item
     */
    public function delete(): void
    {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $id = trim($_POST['id']);
            $categoryManager = new CategoryManager();
            $categoryManager->delete((int)$id);

            header('Location:/category');
        }
    }
}
