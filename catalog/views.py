from django.shortcuts import render
from .models import Book,BookInstance,Author
from django.views import generic






# Create your views here.

def home(request):
    """View function for home page of site."""

    # Generate counts of some of the main objects
    num_books = Book.objects.all().count()
    num_instances = BookInstance.objects.all().count()

    # Available books (status = 'a')
    num_instances_available = BookInstance.objects.filter(status__exact='a').count()

    # The 'all()' is implied by default.
    num_authors = Author.objects.count()

    context = {
        'num_books': num_books,
        'num_instances': num_instances,
        'num_instances_available': num_instances_available,
        'num_authors': num_authors,
    }

    # Render the HTML template home.html with the data in the context variable
    return render(request, 'catalog/home.html', context=context)
  
#def book_detail_view(request, primary_key):
#    try:
#        book = Book.objects.get(pk=primary_key)
#    except Book.DoesNotExist:
#        raise Http404('Book does not exist')
#
#    return render(request, 'catalog/book_detail.html', context={'book': book})

#alternative of functional view 

class BookDetailView(generic.detail.DetailView):
    model = Book
class AuthorDetailView(generic.detail.DetailView):
    model =  Author

class BookListView(generic.list.ListView):
    model=Book
    paginate_by = 15