#'hard coded and need to change code each time (subfamily). Would need to create an argument somehow so woudlnt be hard coded
#' input Subfamily and retun taxon, built with subfamily of Armaniinae
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @param subfamily== "" need to put whatever Genus wanting to full out of here
#' @return print of the taxon related to that subfamily (chr)
#' 
#' @export
#' 

subfamily_taxon <- function(data = FossilAntsData){
  assert_that(is.character("Armaniinae"))
  FossilAntsData %>% 
    filter(subfamily == "Armaniinae") %>% 
    group_by(taxon) %>% 
    select(subfamily, taxon) %>% 
    print(taxon)
}
