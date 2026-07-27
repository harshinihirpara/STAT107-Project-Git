# Reads the body measurement dataset and labels its columns
read_body_data <- function(file_path) {
  
  variable_names <- c(
    "biacromial", "biiliac", "bitrochanteric",
    "chest_depth", "chest_diameter", "elbow_diameter",
    "wrist_diameter", "knee_diameter", "ankle_diameter",
    "shoulder_girth", "chest_girth", "waist_girth",
    "navel_girth", "hip_girth", "thigh_girth",
    "bicep_girth", "forearm_girth", "knee_girth",
    "calf_girth", "ankle_girth", "wrist_girth",
    "age", "weight", "height", "gender"
  )
  
  body_data <- read.table(
    file_path,
    header = FALSE,
    col.names = variable_names
  )
  
  body_data$gender <- factor(
    body_data$gender,
    levels = c(0, 1),
    labels = c("Female", "Male")
  )
  
  return(body_data)
}