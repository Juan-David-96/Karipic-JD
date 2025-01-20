# README

Karipic es una aplicación desarrollada con **Ruby on Rails** que permite la creación y gestión de publicaciones con imágenes. Es un proyecto diseñado para administrar contenido de forma personalizada, donde solo una usuaria especial, Karina, tiene permisos para crear publicaciones. Los usuarios registrados pueden interactuar con las publicaciones dejando comentarios.

---

## **Características Principales**
- **Publicaciones Exclusivas:** Solo Karina puede crear publicaciones con imágenes y descripciones.
- **Comentarios:** Los usuarios registrados pueden comentar en las publicaciones.
- **Autenticación:** El registro e inicio de sesión de usuarios se gestionan con **Devise**.
- **Datos de Usuario:** Cada usuario debe proporcionar un nombre, un correo electrónico y una foto de perfil al registrarse.
- **Almacenamiento de Imágenes:** Las imágenes se almacenan en **Amazon S3** mediante Active Storage.
- **Relaciones y Eliminación en Cascada:** Al eliminar una publicación, todos sus comentarios asociados se eliminan automáticamente.
- **Interfaz Responsiva:** La aplicación utiliza **Bootstrap** para un diseño amigable y adaptable.

---

## **Requisitos del Proyecto**
- Ruby `~> 3.2`
- Rails `~> 7.2.2`
- PostgreSQL como base de datos

---