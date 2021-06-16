#!env zsh

get_description() {
	curl -s https://www.codewars.com/api/v1/code-challenges/${1} | jq -r '.description'
}

get_id() {
	curl -s https://www.codewars.com/api/v1/code-challenges/${1} | jq -r '.id'
}

get_name() {
	curl -s https://www.codewars.com/api/v1/code-challenges/${1} | jq -r '.name'
}

get_rank() {
	curl -s https://www.codewars.com/api/v1/code-challenges/${1} | jq -r '.rank.name'
}


get_url() {
	curl -s https://www.codewars.com/api/v1/code-challenges/${1} | jq -r '.url'
}
