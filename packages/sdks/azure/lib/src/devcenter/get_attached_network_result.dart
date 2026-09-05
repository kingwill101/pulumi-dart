// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAttachedNetwork.
class GetAttachedNetworkResult {
  final String? devCenterId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The ID of the attached Dev Center Network Connection.
  final String? networkConnectionId;

  /// Creates a new [GetAttachedNetworkResult].
  /// [devCenterId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [networkConnectionId] The ID of the attached Dev Center Network Connection.
  const GetAttachedNetworkResult({
    this.devCenterId,
    this.id,
    this.name,
    this.networkConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': ?devCenterId,
      'id': ?id,
      'name': ?name,
      'networkConnectionId': ?networkConnectionId,
    };
  }

  factory GetAttachedNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetAttachedNetworkResult(
      devCenterId: (() { final guardedValue = map['devCenterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkConnectionId: (() { final guardedValue = map['networkConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
