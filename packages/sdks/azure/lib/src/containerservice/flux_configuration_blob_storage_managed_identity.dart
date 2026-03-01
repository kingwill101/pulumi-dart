// ignore_for_file: unused_element, unnecessary_cast


class FluxConfigurationBlobStorageManagedIdentity {
  /// Specifies the client ID for authenticating a Managed Identity.
  final String clientId;

  /// Creates a new [FluxConfigurationBlobStorageManagedIdentity].
  /// [clientId] Specifies the client ID for authenticating a Managed Identity.
  FluxConfigurationBlobStorageManagedIdentity({
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
    };
  }

  factory FluxConfigurationBlobStorageManagedIdentity.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationBlobStorageManagedIdentity(
      clientId: map['clientId'] as String,
    );
  }
}

