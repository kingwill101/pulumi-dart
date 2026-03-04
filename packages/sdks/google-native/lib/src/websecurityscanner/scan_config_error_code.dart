/// Indicates the reason code for a configuration failure.
enum ScanConfigErrorCode {
  codeUnspecified("CODE_UNSPECIFIED"),
  ok("OK"),
  internalError("INTERNAL_ERROR"),
  appengineApiBackendError("APPENGINE_API_BACKEND_ERROR"),
  appengineApiNotAccessible("APPENGINE_API_NOT_ACCESSIBLE"),
  appengineDefaultHostMissing("APPENGINE_DEFAULT_HOST_MISSING"),
  cannotUseGoogleComAccount("CANNOT_USE_GOOGLE_COM_ACCOUNT"),
  cannotUseOwnerAccount("CANNOT_USE_OWNER_ACCOUNT"),
  computeApiBackendError("COMPUTE_API_BACKEND_ERROR"),
  computeApiNotAccessible("COMPUTE_API_NOT_ACCESSIBLE"),
  customLoginUrlDoesNotBelongToCurrentProject(
    "CUSTOM_LOGIN_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT",
  ),
  customLoginUrlMalformed("CUSTOM_LOGIN_URL_MALFORMED"),
  customLoginUrlMappedToNonRoutableAddress(
    "CUSTOM_LOGIN_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS",
  ),
  customLoginUrlMappedToUnreservedAddress(
    "CUSTOM_LOGIN_URL_MAPPED_TO_UNRESERVED_ADDRESS",
  ),
  customLoginUrlHasNonRoutableIpAddress(
    "CUSTOM_LOGIN_URL_HAS_NON_ROUTABLE_IP_ADDRESS",
  ),
  customLoginUrlHasUnreservedIpAddress(
    "CUSTOM_LOGIN_URL_HAS_UNRESERVED_IP_ADDRESS",
  ),
  duplicateScanName("DUPLICATE_SCAN_NAME"),
  invalidFieldValue("INVALID_FIELD_VALUE"),
  failedToAuthenticateToTarget("FAILED_TO_AUTHENTICATE_TO_TARGET"),
  findingTypeUnspecified("FINDING_TYPE_UNSPECIFIED"),
  forbiddenToScanCompute("FORBIDDEN_TO_SCAN_COMPUTE"),
  forbiddenUpdateToManagedScan("FORBIDDEN_UPDATE_TO_MANAGED_SCAN"),
  malformedFilter("MALFORMED_FILTER"),
  malformedResourceName("MALFORMED_RESOURCE_NAME"),
  projectInactive("PROJECT_INACTIVE"),
  requiredField("REQUIRED_FIELD"),
  resourceNameInconsistent("RESOURCE_NAME_INCONSISTENT"),
  scanAlreadyRunning("SCAN_ALREADY_RUNNING"),
  scanNotRunning("SCAN_NOT_RUNNING"),
  seedUrlDoesNotBelongToCurrentProject(
    "SEED_URL_DOES_NOT_BELONG_TO_CURRENT_PROJECT",
  ),
  seedUrlMalformed("SEED_URL_MALFORMED"),
  seedUrlMappedToNonRoutableAddress("SEED_URL_MAPPED_TO_NON_ROUTABLE_ADDRESS"),
  seedUrlMappedToUnreservedAddress("SEED_URL_MAPPED_TO_UNRESERVED_ADDRESS"),
  seedUrlHasNonRoutableIpAddress("SEED_URL_HAS_NON_ROUTABLE_IP_ADDRESS"),
  seedUrlHasUnreservedIpAddress("SEED_URL_HAS_UNRESERVED_IP_ADDRESS"),
  serviceAccountNotConfigured("SERVICE_ACCOUNT_NOT_CONFIGURED"),
  tooManyScans("TOO_MANY_SCANS"),
  unableToResolveProjectInfo("UNABLE_TO_RESOLVE_PROJECT_INFO"),
  unsupportedBlacklistPatternFormat("UNSUPPORTED_BLACKLIST_PATTERN_FORMAT"),
  unsupportedFilter("UNSUPPORTED_FILTER"),
  unsupportedFindingType("UNSUPPORTED_FINDING_TYPE"),
  unsupportedUrlScheme("UNSUPPORTED_URL_SCHEME"),
  cloudAssetInventoryAssetNotFound("CLOUD_ASSET_INVENTORY_ASSET_NOT_FOUND");

  const ScanConfigErrorCode(this.wireValue);
  final String wireValue;

  static ScanConfigErrorCode fromValue(String value) {
    for (final item in ScanConfigErrorCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanConfigErrorCode value: $value');
  }
}
