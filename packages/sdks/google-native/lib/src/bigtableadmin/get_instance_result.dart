// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstance.
class GetInstanceResult {
  /// A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.
  final String? createTime;
  /// The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  final String? displayName;
  /// Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  final Map<String, String>? labels;
  /// The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  final String? name;
  /// Reserved for future use.
  final bool? satisfiesPzs;
  /// The current state of the instance.
  final String? state;
  /// The type of the instance. Defaults to `PRODUCTION`.
  final String? type;

  /// Creates a new [GetInstanceResult].
  /// [createTime] A commit timestamp representing when this Instance was created. For instances created before this field was added (August 2021), this value is `seconds: 0, nanos: 1`.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Can be changed at any time, but should be kept globally unique to avoid confusion.
  /// [labels] Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. They can be used to filter resources and aggregate metrics. * Label keys must be between 1 and 63 characters long and must conform to the regular expression: `\p{Ll}\p{Lo}{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression: `[\p{Ll}\p{Lo}\p{N}_-]{0,63}`. * No more than 64 labels can be associated with a given resource. * Keys and values must both be under 128 bytes.
  /// [name] The unique name of the instance. Values are of the form `projects/{project}/instances/a-z+[a-z0-9]`.
  /// [satisfiesPzs] Reserved for future use.
  /// [state] The current state of the instance.
  /// [type] The type of the instance. Defaults to `PRODUCTION`.
  const GetInstanceResult({
    this.createTime,
    this.displayName,
    this.labels,
    this.name,
    this.satisfiesPzs,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'satisfiesPzs': ?satisfiesPzs,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
