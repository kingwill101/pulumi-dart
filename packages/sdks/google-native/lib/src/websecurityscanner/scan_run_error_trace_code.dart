import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the error reason code.
enum ScanRunErrorTraceCode implements pulumi.PulumiEnum<String> {
  codeUnspecified("CODE_UNSPECIFIED"),
  internalError("INTERNAL_ERROR"),
  scanConfigIssue("SCAN_CONFIG_ISSUE"),
  authenticationConfigIssue("AUTHENTICATION_CONFIG_ISSUE"),
  timedOutWhileScanning("TIMED_OUT_WHILE_SCANNING"),
  tooManyRedirects("TOO_MANY_REDIRECTS"),
  tooManyHttpErrors("TOO_MANY_HTTP_ERRORS"),
  startingUrlsCrawlHttpErrors("STARTING_URLS_CRAWL_HTTP_ERRORS");

  const ScanRunErrorTraceCode(this.wireValue);
  @override
  final String wireValue;

  static ScanRunErrorTraceCode fromValue(String value) {
    for (final item in ScanRunErrorTraceCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunErrorTraceCode value: $value');
  }
}
