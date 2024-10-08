from django.contrib import admin

# Register your models here.
from .models import Author, Genre, Book, BookInstance, Language
class BooksInstanceInline(admin.TabularInline):
    model = BookInstance
    extra=0
class BookInline(admin.TabularInline):
    model=Book
    extra=0
class AuthorAdmin(admin.ModelAdmin):
    list_display = ('last_name', 'first_name', 'date_of_birth', 'date_of_death')
    fields = ['first_name', 'last_name', ('date_of_birth', 'date_of_death')]
    inlines=[BookInline,]
class BookAdmin(admin.ModelAdmin):
    list_display = ('title', 'author','language','display_genre')
    inlines=[BooksInstanceInline,]
class BookInstanceAdmin(admin.ModelAdmin):
    list_filter = ('status', 'due_back')
    list_display =('id','status', 'due_back','imprint')
    fieldsets = (
        (None, {
            'fields': ('book', 'imprint', 'id')
        }),
        ('Availability', {
            'fields': ('status', 'due_back')
        }),
    )

admin.site.register(Book,BookAdmin)
admin.site.register(Author,AuthorAdmin)
admin.site.register(Genre)
admin.site.register(BookInstance,BookInstanceAdmin)
admin.site.register(Language)
