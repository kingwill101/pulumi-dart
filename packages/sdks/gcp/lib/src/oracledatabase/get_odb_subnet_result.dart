// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOdbSubnet.
class GetOdbSubnetResult {
  final String? cidrRange;
  final String? createTime;
  final String? deletionPolicy;
  final bool? deletionProtection;
  final Map<String, String>? effectiveLabels;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final Map<String, String>? labels;
  final String? location;
  final String? name;
  final String? odbSubnetId;
  final String? odbnetwork;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? purpose;
  final String? state;

  /// Creates a new [GetOdbSubnetResult].
  /// [cidrRange] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [deletionProtection] Optional.
  /// [effectiveLabels] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Optional.
  /// [location] Optional.
  /// [name] Optional.
  /// [odbSubnetId] Optional.
  /// [odbnetwork] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [purpose] Optional.
  /// [state] Optional.
  const GetOdbSubnetResult({
    this.cidrRange,
    this.createTime,
    this.deletionPolicy,
    this.deletionProtection,
    this.effectiveLabels,
    this.id,
    this.labels,
    this.location,
    this.name,
    this.odbSubnetId,
    this.odbnetwork,
    this.project,
    this.pulumiLabels,
    this.purpose,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrRange': ?cidrRange,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'effectiveLabels': ?effectiveLabels,
      'id': ?id,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'odbSubnetId': ?odbSubnetId,
      'odbnetwork': ?odbnetwork,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'purpose': ?purpose,
      'state': ?state,
    };
  }

  factory GetOdbSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetOdbSubnetResult(
      cidrRange: (() { final guardedValue = map['cidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbSubnetId: (() { final guardedValue = map['odbSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbnetwork: (() { final guardedValue = map['odbnetwork']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
