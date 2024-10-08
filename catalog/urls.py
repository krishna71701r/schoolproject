from django.urls import path
from . import views

urlpatterns = [
    path('',views.home,name='home'
         ),
    path('books/',views.BookListView.as_view(),name='books'),
    path('books/<int:pk>/',views.BookDetailView.as_view(),name='book-detail'),
    path('authors/<int:pk>/',views.AuthorDetailView.as_view(),name='author-detail' ),
    path('authors/',views.AuthorListView.as_view(),name='authors')
]