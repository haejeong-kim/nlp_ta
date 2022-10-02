library("koscrap")
library("dplyr")

auth_key <- "6OiEySiVl8xN7G6O07%2BHDAHr%2FiGFlbfJ%2Fn%2FZckXzqehnMcQ2yhDkrtdejJTqmxIjIBzIKVWP2gs8RiKnZEh%2Bqw%3D%3D"

LAWD_CD <- legal_divisions %>% 
  filter(CTY_NM %in% "노원구") %>% 
  select(CTY_CD) %>% 
  filter(row_number() == 1) %>% 
  pull()

nowon <- trade_apt(auth_key, 
                   LAWD_CD = LAWD_CD, 
                   DEAL_YMD = "202112")

glimpse(nowon)


nowon %>% 
  summarise(max_price = max(AMOUNT))

nowon %>% 
  group_by(DONG_NM) %>% 
  tally() %>% 
  arrange(desc(n))


client_id <- "EDznybvY0n1rMcrBGIe6"
client_secret <- "ju5Joc33iK"

inequality <- search_naver(
  "불평등", client_id = client_id, client_secret = client_secret)


# 아파트실거래 정보 API 인증키
auth_key <- "	6OiEySiVl8xN7G6O07%2BHDAHr%2FiGFlbfJ%2Fn%2FZckXzqehnMcQ2yhDkrtdejJTqmxIjIBzIKVWP2gs8RiKnZEh%2Bqw%3D%3D"

# 노원구 코드
cty_cd <- "11350"

# 거래월
deal_yms <- seq(as.Date("2006-01-01"), as.Date("2022-09-01"), by = "month") %>% 
  format("%Y%m")
deal_yms

trade_nowon <- deal_yms %>% 
  purrr::map2_df({
    function(x) {
      trade_apt(auth_key, LAWD_CD = cty_cd, 
                DEAL_YMD = x, chunk = 300,  do_done = TRUE)
    }
  })


library(tidyverse)
library(koscrap)
library(dlookr)

legal_divisions %>% 
  filter(CTY_NM %in% "노원구") %>% 
  select(CTY_CD) %>% 
  unique()

# 아파트실거래 정보 API 인증키
auth_key <- "	6OiEySiVl8xN7G6O07%2BHDAHr%2FiGFlbfJ%2Fn%2FZckXzqehnMcQ2yhDkrtdejJTqmxIjIBzIKVWP2gs8RiKnZEh%2Bqw%3D%3D"

# 노원구 코드
cty_cd <- "11350"

# 거래월
deal_yms <- seq(as.Date("2006-01-01"), as.Date("2022-09-01"), by = "month") %>% 
  format("%Y%m")
deal_yms

trade_nowon <- deal_yms %>% 
  purrr::map2_df({
    function(x) {
      trade_apt(auth_key, LAWD_CD = cty_cd, 
                DEAL_YMD = x, chunk = 300,  do_done = TRUE)
    }
  })

devtools::install_github("choonghyunryu/koscrap")

library(tidyverse)
library(koscrap)
library(dlookr)

legal_divisions %>% 
  filter(CTY_NM %in% "노원구") %>% 
  select(CTY_CD) %>% 
  unique()

# 아파트실거래 정보 API 인증키
auth_key <- "6OiEySiVl8xN7G6O07%2BHDAHr%2FiGFlbfJ%2Fn%2FZckXzqehnMcQ2yhDkrtdejJTqmxIjIBzIKVWP2gs8RiKnZEh%2Bqw%3D%3D"

# 노원구 코드
cty_cd <- "11350"

# 거래월
deal_yms <- seq(as.Date("2006-01-01"), as.Date("2022-09-01"), by = "month") %>% 
  format("%Y%m")
deal_yms

trade_nowon <- deal_yms %>% 
  purrr::map_df({
    function(x) {
      trade_apt(auth_key, LAWD_CD = cty_cd, 
                DEAL_YMD = x, chunk = 300,  do_done = TRUE)
    }
  })

dim(trade_nowon)

invalid <- trade_nowon %>% 
  mutate(DEAL_DATE2 = as.Date(DEAL_DATE)) %>%     
  filter(is.na(DEAL_DATE2))

NROW(invalid)

library(tidyverse)
library(koscrap)
library(dlookr)

legal_divisions %>% 
  filter(CTY_NM %in% "노원구") %>% 
  select(CTY_CD) %>% 
  unique()

# 아파트실거래 정보 API 인증키
auth_key <- "6OiEySiVl8xN7G6O07%2BHDAHr%2FiGFlbfJ%2Fn%2FZckXzqehnMcQ2yhDkrtdejJTqmxIjIBzIKVWP2gs8RiKnZEh%2Bqw%3D%3D"

# 노원구 코드
cty_cd <- "11350"

# 거래월
deal_yms <- seq(as.Date("2006-01-01"), as.Date("2022-09-01"), by = "month") %>% 
  format("%Y%m")
deal_yms

trade_nowon <- deal_yms %>% 
  purrr::map_df({
    function(x) {
      trade_apt(auth_key, LAWD_CD = cty_cd, 
                DEAL_YMD = x, chunk = 300,  do_done = TRUE)
    }
  })

