/// The type of this referenced entity.
enum IntegrationRuntimeEntityReferenceType {
  valueIntegrationRuntimeReference("IntegrationRuntimeReference"),
  valueLinkedServiceReference("LinkedServiceReference");

  const IntegrationRuntimeEntityReferenceType(this.wireValue);
  final String wireValue;

  static IntegrationRuntimeEntityReferenceType fromValue(String value) {
    for (final item in IntegrationRuntimeEntityReferenceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IntegrationRuntimeEntityReferenceType value: $value',
    );
  }
}
