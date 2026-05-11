export APP_BITCOLI_UI_PORT="27608"
export APP_BITCOLI_API_PORT="27609"
export APP_BITCOLI_API_IP="10.21.21.81"

bitcoli_api_hidden_service_file="${EXPORTS_TOR_DATA_DIR}/app-${EXPORTS_APP_ID}-api/hostname"
if [ -s "${bitcoli_api_hidden_service_file}" ]; then
    export APP_BITCOLI_API_HIDDEN_SERVICE="http://$(cat "${bitcoli_api_hidden_service_file}")"
else
    export APP_BITCOLI_API_HIDDEN_SERVICE=""
fi
