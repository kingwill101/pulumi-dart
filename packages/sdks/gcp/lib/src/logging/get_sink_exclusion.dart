// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSinkExclusion {
  /// A description of this exclusion.
  final pulumi.Input<String> description;
  /// Whether this exclusion is disabled and it does not exclude any log entries.
  final pulumi.Input<bool> disabled;
  /// An advanced logs filter that matches the log entries to be excluded.
  final pulumi.Input<String> filter;
  /// A client-assigned identifier, such as `load-balancer-exclusion`.
  final pulumi.Input<String> name;

  /// Creates a new [GetSinkExclusion].
  /// [description] A description of this exclusion.
  /// [disabled] Whether this exclusion is disabled and it does not exclude any log entries.
  /// [filter] An advanced logs filter that matches the log entries to be excluded.
  /// [name] A client-assigned identifier, such as `load-balancer-exclusion`.
  GetSinkExclusion({
    required this.description,
    required this.disabled,
    required this.filter,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'disabled': disabled,
      'filter': filter,
      'name': name,
    };
  }

  factory GetSinkExclusion.fromMap(Map<String, dynamic> map) {
    return GetSinkExclusion(
      description: (map['description'] as String).input(),
      disabled: (map['disabled'] as bool).input(),
      filter: (map['filter'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

