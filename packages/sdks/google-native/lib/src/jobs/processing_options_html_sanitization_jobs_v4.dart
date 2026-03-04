/// Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
enum ProcessingOptionsHtmlSanitizationJobsV4 {
  htmlSanitizationUnspecified("HTML_SANITIZATION_UNSPECIFIED"),
  htmlSanitizationDisabled("HTML_SANITIZATION_DISABLED"),
  simpleFormattingOnly("SIMPLE_FORMATTING_ONLY");

  const ProcessingOptionsHtmlSanitizationJobsV4(this.wireValue);
  final String wireValue;

  static ProcessingOptionsHtmlSanitizationJobsV4 fromValue(String value) {
    for (final item in ProcessingOptionsHtmlSanitizationJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ProcessingOptionsHtmlSanitizationJobsV4 value: $value',
    );
  }
}
