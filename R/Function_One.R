#"hard coded and need to change code each time (Genus). Would need to create an argument somehow so woudlnt be hard coded
#' input Genus and return subfamily accossiated , built with Genus of Casaleia
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @param Genus== "" need to put whatever Genus wanting to pull out of here
#' @return  print of the subfamily accossiated (chr)
#' 
#' @export
#' 

genus_subfamily <- function(data = FossilAntsData){
  assert_that(is.character("Casaleia"))
  FossilAntsData %>% 
    filter(Genus== "Casaleia") %>% 
    arrange(subfamily) %>% 
    select(Genus, subfamily) %>% 
    print(subfamily)
}
