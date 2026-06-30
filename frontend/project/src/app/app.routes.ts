import { Routes } from '@angular/router';
import { Home } from './pages/home/home';
import { Products } from './pages/products/products';
import { ImportExport } from './pages/import-export/import-export';
import { Users } from './pages/users/users';
import { Categories } from './pages/categories/categories';
import { NewProduct } from './pages/new-product/new-product';
import { Orders } from './pages/orders/orders';
import { Login } from './pages/login/login';
import { authGuard } from './guards/auth-guard';
import { Cardapio } from './pages/cardapio/cardapio';

export const routes: Routes = [

    {
        path: '',
        redirectTo: '/login',
        pathMatch: 'full'
    },
    {
        path: 'login',
        component: Login,
        title: 'Login - Raízes do Nordeste CRM'
    },
    {
        path: 'cardapio',
        component: Cardapio,
        title: 'Faça seu Pedido - Raízes do Nordeste'
    },
    {
        path: 'home',
        component: Home,
        title: 'Raízes do Nordeste CRM'
    },
    {
        path: 'produtos',
        component: Products,
        title: 'Produtos - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    },
    {
        path: 'pedidos',
        component: Orders,
        title: 'Pedidos - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    },
    {
        path: 'produtos/novo',
        component: NewProduct,
        title: 'Novo Produto - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    },
    {
        path: 'importar-exportar',
        component: ImportExport,
        title: 'Importar / Exportar - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    },
    {
        path: 'usuarios',
        component: Users,
        title: 'Usuários - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    },
    {
        path: 'categorias',
        component: Categories,
        title: 'Categorias - Raízes do Nordeste CRM',
        canActivate: [authGuard]
    }
];
