// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSas.
class GetSasResult {
  final String connectionString;
  final String expiry;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The computed Event Hub Shared Access Signature (SAS).
  final String sas;

  /// Creates a new [GetSasResult].
  /// [connectionString] Required.
  /// [expiry] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sas] The computed Event Hub Shared Access Signature (SAS).
  const GetSasResult({
    required this.connectionString,
    required this.expiry,
    required this.id,
    required this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'expiry': expiry,
      'id': id,
      'sas': sas,
    };
  }

  factory GetSasResult.fromMap(Map<String, dynamic> map) {
    return GetSasResult(
      connectionString: map['connectionString'] as String,
      expiry: map['expiry'] as String,
      id: map['id'] as String,
      sas: map['sas'] as String,
    );
  }
}
