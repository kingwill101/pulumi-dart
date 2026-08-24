// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZeroTrustDlpSensitivityLevelOrder.
class GetZeroTrustDlpSensitivityLevelOrderResult {
  final String? accountId;
  /// The ID of this resource.
  final String? id;
  final List<String>? levelIds;
  final String? sensitivityGroupId;

  /// Creates a new [GetZeroTrustDlpSensitivityLevelOrderResult].
  /// [accountId] Optional.
  /// [id] The ID of this resource.
  /// [levelIds] Optional.
  /// [sensitivityGroupId] Optional.
  const GetZeroTrustDlpSensitivityLevelOrderResult({
    this.accountId,
    this.id,
    this.levelIds,
    this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'levelIds': ?levelIds,
      'sensitivityGroupId': ?sensitivityGroupId,
    };
  }

  factory GetZeroTrustDlpSensitivityLevelOrderResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityLevelOrderResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      levelIds: (() { final guardedValue = map['levelIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
