/// The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
enum ServiceCorrelationScheme {
  alignedAffinity("AlignedAffinity"),
  nonAlignedAffinity("NonAlignedAffinity");

  const ServiceCorrelationScheme(this.wireValue);
  final String wireValue;

  static ServiceCorrelationScheme fromValue(String value) {
    for (final item in ServiceCorrelationScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceCorrelationScheme value: $value');
  }
}

