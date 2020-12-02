#' hard coded and need to change code each time (Genus). Would need to create an argument somehow so woudlnt be hard coded
#' input genus and get fossile size accossiated and graph
#' built with the genus of Casaleia
#' 
#' @param  data data what is being used (default = FossilAntsData)
#' @param Genus== "" need to put whatever Genus wanting to full out of here
#' @return fossil sizes related to that genus and graphs
#' 
#' @export
#' 

fossil_size <- function(data = FossilAntsData){
  assert_that(is.character("Casaleia"))
  FossilAntsData %>% 
    filter(Genus== "Casaleia") %>% 
    select(Genus, min_ma, max_ma) %>% 
    print(min_ma, max_ma) %>% 
    ggplot(mapping = aes(x = min_ma, y = max_ma))+ geom_point()
}