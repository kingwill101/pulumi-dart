import 'package:pulumi/pulumi.dart' as pulumi;

/// Error condition this handler applies to.
enum ErrorHandlerErrorCode implements pulumi.PulumiEnum<String> {
  errorCodeUnspecified("ERROR_CODE_UNSPECIFIED"),
  errorCodeDefault("ERROR_CODE_DEFAULT"),
  errorCodeOverQuota("ERROR_CODE_OVER_QUOTA"),
  errorCodeDosApiDenial("ERROR_CODE_DOS_API_DENIAL"),
  errorCodeTimeout("ERROR_CODE_TIMEOUT");

  const ErrorHandlerErrorCode(this.wireValue);
  @override
  final String wireValue;

  static ErrorHandlerErrorCode fromValue(String value) {
    for (final item in ErrorHandlerErrorCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorHandlerErrorCode value: $value');
  }
}
