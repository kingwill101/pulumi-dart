// ignore_for_file: unused_element, unnecessary_cast


class RunCommandErrorBlobManagedIdentity {
  /// The client ID of the managed identity.
  final String? clientId;
  /// The object ID of the managed identity.
  final String? objectId;

  /// Creates a new [RunCommandErrorBlobManagedIdentity].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  RunCommandErrorBlobManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandErrorBlobManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandErrorBlobManagedIdentity(
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

