#' Find Pokémon by name pattern
#'
#' @param poke_name A character string to match against Pokémon names.
#' @return A tibble of matching Pokémon card names and their flavor text.
#' @importFrom dplyr filter select distinct
#' @importFrom stringr str_detect str_to_title
#' @export
find_poke <- function(poke_name) {

  load_data() |>
    filter(str_detect(name, str_to_title(poke_name))) |>
    select(name, flavorText) |>
    distinct()

}

#' Find multiple Pokémon by name patterns
#'
#' @param poke_names A character vector of name patterns.
#' @return A tibble of matching Pokémon card names and flavor text.
#' @export
find_many_pokes <- function(poke_names) {

  poke_names |>
    purrr::map(find_poke) |>
    dplyr::bind_rows()

}
