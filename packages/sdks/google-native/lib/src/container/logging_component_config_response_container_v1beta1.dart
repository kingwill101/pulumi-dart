// ignore_for_file: unused_element, unnecessary_cast


/// LoggingComponentConfig is cluster logging component configuration.
class LoggingComponentConfigResponseContainerV1beta1 {
  /// Select components to collect logs. An empty set would disable all logging.
  final List<String> enableComponents;

  /// Creates a new [LoggingComponentConfigResponseContainerV1beta1].
  /// [enableComponents] Select components to collect logs. An empty set would disable all logging.
  LoggingComponentConfigResponseContainerV1beta1({
    required this.enableComponents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableComponents': enableComponents,
    };
  }

  factory LoggingComponentConfigResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return LoggingComponentConfigResponseContainerV1beta1(
      enableComponents: (map['enableComponents'] as List).cast<String>(),
    );
  }
}

