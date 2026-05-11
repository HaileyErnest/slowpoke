#' Load bundled Pokémon TCG dataset
#'
#' @return A tibble containing Pokémon TCG data.
#' @export
load_data <- function() {

  path <- "https://www.dropbox.com/scl/fi/tnl4wcmgduu3bnmmllz2u/pokemon_cards.csv?rlkey=h7evg3hr4ckzqrxrzoy458ojs&st=uzrlktbc&dl=1"
  readr::read_csv(path, show_col_types = FALSE)

}
