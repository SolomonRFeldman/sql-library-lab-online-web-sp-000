def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters WHERE motto = (SELECT MIN(motto) FROM characters)"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
  FROM series 
  INNER JOIN authors ON authors.id = series.author_id 
  INNER JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  'SELECT series.title, COUNT(characters.species)
  FROM series
  OUTER JOIN characters ON characters.series_id = series.id
  GROUP BY series.id
  HAVING "human" = characters.species'
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
