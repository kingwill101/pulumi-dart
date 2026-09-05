// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSas.
class GetSasResult {
  final String? connectionString;
  final String? expiry;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The computed Event Hub Shared Access Signature (SAS).
  final String? sas;

  /// Creates a new [GetSasResult].
  /// [connectionString] Optional.
  /// [expiry] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [sas] The computed Event Hub Shared Access Signature (SAS).
  const GetSasResult({
    this.connectionString,
    this.expiry,
    this.id,
    this.sas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'expiry': ?expiry,
      'id': ?id,
      'sas': ?sas,
    };
  }

  factory GetSasResult.fromMap(Map<String, dynamic> map) {
    return GetSasResult(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sas: (() { final guardedValue = map['sas']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
