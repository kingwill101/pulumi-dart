// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FolderSinkExclusion {
  /// A description of this exclusion.
  final pulumi.Input<String>? description;
  /// If set to True, then this exclusion is disabled and it does not exclude any log entries.
  final pulumi.Input<bool>? disabled;
  /// An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// write a filter.
  final pulumi.Input<String> filter;
  /// A client-assigned identifier, such as `load-balancer-exclusion`. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  final pulumi.Input<String> name;

  /// Creates a new [FolderSinkExclusion].
  /// [description] A description of this exclusion.
  /// [disabled] If set to True, then this exclusion is disabled and it does not exclude any log entries.
  /// [filter] An advanced logs filter that matches the log entries to be excluded. By using the sample function, you can exclude less than 100% of the matching log entries. See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced_filters) for information on how to
  /// [name] A client-assigned identifier, such as `load-balancer-exclusion`. Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  const FolderSinkExclusion({
    this.description,
    this.disabled,
    required this.filter,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'filter': filter,
      'name': name,
    };
  }

  factory FolderSinkExclusion.fromMap(Map<String, dynamic> map) {
    return FolderSinkExclusion(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filter: pulumi.Input.fromValue(map['filter'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

