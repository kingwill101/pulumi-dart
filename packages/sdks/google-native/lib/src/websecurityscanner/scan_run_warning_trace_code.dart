/// Indicates the warning code.
enum ScanRunWarningTraceCode {
  codeUnspecified("CODE_UNSPECIFIED"),
  insufficientCrawlResults("INSUFFICIENT_CRAWL_RESULTS"),
  tooManyCrawlResults("TOO_MANY_CRAWL_RESULTS"),
  tooManyFuzzTasks("TOO_MANY_FUZZ_TASKS"),
  blockedByIap("BLOCKED_BY_IAP"),
  noStartingUrlFoundForManagedScan("NO_STARTING_URL_FOUND_FOR_MANAGED_SCAN");

  const ScanRunWarningTraceCode(this.wireValue);
  final String wireValue;

  static ScanRunWarningTraceCode fromValue(String value) {
    for (final item in ScanRunWarningTraceCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScanRunWarningTraceCode value: $value');
  }
}
