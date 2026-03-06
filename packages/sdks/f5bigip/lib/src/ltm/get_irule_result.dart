// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIrule.
class GetIruleResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Irule configured on bigip
  final String? irule;
  /// Name of irule configured on bigip with full path
  final String name;
  /// Bigip partition in which rule is configured
  final String partition;

  /// Creates a new [GetIruleResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [irule] Irule configured on bigip
  /// [name] Name of irule configured on bigip with full path
  /// [partition] Bigip partition in which rule is configured
  const GetIruleResult({
    required this.id,
    this.irule,
    required this.name,
    required this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'irule': ?irule,
      'name': name,
      'partition': partition,
    };
  }

  factory GetIruleResult.fromMap(Map<String, dynamic> map) {
    return GetIruleResult(
      id: map['id'] as String,
      irule: (() { final guardedValue = map['irule']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      partition: map['partition'] as String,
    );
  }
}

