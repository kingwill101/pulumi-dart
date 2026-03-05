// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource tag input.
class UserCreatedResourceTag {
  /// The tag name. Please read for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  final pulumi.Input<String>? tagName;
  /// The tag value. Please read her for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  final pulumi.Input<String>? tagValue;

  /// Creates a new [UserCreatedResourceTag].
  /// [tagName] The tag name. Please read for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  /// [tagValue] The tag value. Please read her for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  UserCreatedResourceTag({
    this.tagName,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tagName': ?tagName,
      'tagValue': ?tagValue,
    };
  }

  factory UserCreatedResourceTag.fromMap(Map<String, dynamic> map) {
    return UserCreatedResourceTag(
      tagName: (() { final guardedValue = map['tagName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValue: (() { final guardedValue = map['tagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

