// ignore_for_file: unused_element, unnecessary_cast


/// Resource tag input.
class UserCreatedResourceTag {
  /// The tag name. Please read for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  final String? tagName;
  /// The tag value. Please read her for more information: https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/tag-resources#limitations
  final String? tagValue;

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
      tagName: map['tagName'] == null ? null : map['tagName'] as String,
      tagValue: map['tagValue'] == null ? null : map['tagValue'] as String,
    );
  }
}

