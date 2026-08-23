// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOdbSubnet.
class GetOdbSubnetResult {
  final String cidrRange;
  final String createTime;
  final String deletionPolicy;
  final bool deletionProtection;
  final Map<String, String> effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String odbSubnetId;
  final String odbnetwork;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String purpose;
  final String state;

  /// Creates a new [GetOdbSubnetResult].
  /// [cidrRange] Required.
  /// [createTime] Required.
  /// [deletionPolicy] Required.
  /// [deletionProtection] Required.
  /// [effectiveLabels] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [odbSubnetId] Required.
  /// [odbnetwork] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [purpose] Required.
  /// [state] Required.
  const GetOdbSubnetResult({
    required this.cidrRange,
    required this.createTime,
    required this.deletionPolicy,
    required this.deletionProtection,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    required this.odbSubnetId,
    required this.odbnetwork,
    this.project,
    required this.pulumiLabels,
    required this.purpose,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': cidrRange,
      'createTime': createTime,
      'deletionPolicy': deletionPolicy,
      'deletionProtection': deletionProtection,
      'effectiveLabels': effectiveLabels,
      'id': id,
      'labels': labels,
      'location': location,
      'name': name,
      'odbSubnetId': odbSubnetId,
      'odbnetwork': odbnetwork,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'purpose': purpose,
      'state': state,
    };
  }

  factory GetOdbSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetOdbSubnetResult(
      cidrRange: map['cidrRange'] as String,
      createTime: map['createTime'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      odbSubnetId: map['odbSubnetId'] as String,
      odbnetwork: map['odbnetwork'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      purpose: map['purpose'] as String,
      state: map['state'] as String,
    );
  }
}
