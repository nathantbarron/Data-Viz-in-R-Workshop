library(ggplot2)

# 1. Complete themes ----
## 1.1 theme_grey() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_grey()


## 1.2 theme_bw() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_bw()


## 1.3 theme_linedraw() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_linedraw()


## 1.4 theme_light() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_light()


## 1.5 theme_dark() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_dark()


## 1.6 theme_minimal() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_minimal()


## 1.7 theme_classic() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_classic()


## 1.7 theme_void() ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     theme_void()


# 2. Plot elements ----
## 2.1 plot.background ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(title = "Title", subtitle = "Subtitle") +
     theme(plot.background = element_rect(fill = "pink"))

## 2.2 plot.title and plot.subtitle ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(
          plot.title = element_text(color = "red", size = 25),
          plot.subtitle = element_text(color = "grey40", face = "italic"),
          plot.caption = element_text(color = "grey40")
     )


# 3. Panel elements ----
## 3.1 panel.background ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(panel.background = element_rect(fill = "pink"))


## 3.2 panel.border ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(panel.border = element_rect(color = "red", fill = NA))


## 3.3 panel.grid ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(panel.grid = element_line(color = "red"))


# 4. Axis elements ----
## 4.1 axis.title ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(axis.title = element_text(color = "red"))

ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(
          axis.title.x = element_text(color = "forestgreen"),
          axis.title.y = element_text(color = "blue")
     )


## 4.2 axis.text ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(
          axis.text = element_text(size = 25, angle = 40),
          axis.text.y = element_text(color = "forestgreen")
     )

## 4.3 axis.ticks and axis.ticks.length ----
ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(
          title = "Title", subtitle = "Subtitle",
          caption = "Caption"
     ) +
     theme(
          axis.ticks = element_line(linewidth = 8),
          axis.ticks.length = unit(18, "points")
     )


# 5. Fonts ----
## 5.1 For Windows users ----
install.packages("extrafont")
library("extrafont")

font_import()
# You will be prompted to continue [y/n]
# Type 'y' and press enter

loadfonts(device = "win")


## 5.2 For Mac users ----
install.packages("extrafont")
library("extrafont")

font_import()
# You will be prompted to continue [y/n]
# Type 'y' and press enter

loadfonts()


# 5.3 Check which fonts are available ----
fonts()


# 6. Custom theme ----
# You have a pre-theme plot saved as 'existing_plot'
existing_plot <- ggplot(mtcars) +
     geom_point(aes(wt, mpg)) +
     labs(title = "TITLE", subtitle = "Subtitle")

# Save your theme settings as an object ('my_theme')
my_theme <- theme(
     plot.title = element_text(size = 25, family = "Urbanist", face = "bold", color = "blue"),
     plot.subtitle = element_text(size = 15, family = "Urbanist", face = "italic", color = "grey40"),
     axis.title = element_text(size = 10, family = "Urbanist"),
     axis.text = element_text(size = 8, family = "Urbanist"),
)

# Add your custom theme to the existing plot
existing_plot + my_theme
