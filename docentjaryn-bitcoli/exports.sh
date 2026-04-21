export APP_BITCOLI_UI_PORT="27608"
export APP_BITCOLI_API_PORT="27609"

bitcoli_api_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-api/hostname"
export APP_BITCOLI_API_HIDDEN_SERVICE="$(cat "${bitcoli_api_hidden_service_file}" 2>/dev/null || echo "notyetset.onion")" 
