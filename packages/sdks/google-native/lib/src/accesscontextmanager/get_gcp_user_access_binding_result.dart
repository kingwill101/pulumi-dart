// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGcpUserAccessBinding.
class GetGcpUserAccessBindingResult {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final List<String> accessLevels;
  /// Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final List<String> dryRunAccessLevels;
  /// Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  final String groupKey;
  /// Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  final String name;

  /// Creates a new [GetGcpUserAccessBindingResult].
  /// [accessLevels] Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [dryRunAccessLevels] Optional. Dry run access level that will be evaluated but will not be enforced. The access denial based on dry run policy will be logged. Only one access level is supported, not multiple. This list must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  /// [groupKey] Immutable. Google Group id whose members are subject to this binding's restrictions. See "id" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: "01d520gv4vjcrht"
  /// [name] Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: "organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N"
  const GetGcpUserAccessBindingResult({
    required this.accessLevels,
    required this.dryRunAccessLevels,
    required this.groupKey,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessLevels': accessLevels,
      'dryRunAccessLevels': dryRunAccessLevels,
      'groupKey': groupKey,
      'name': name,
    };
  }

  factory GetGcpUserAccessBindingResult.fromMap(Map<String, dynamic> map) {
    return GetGcpUserAccessBindingResult(
      accessLevels: (map['accessLevels'] as List).cast<String>(),
      dryRunAccessLevels: (map['dryRunAccessLevels'] as List).cast<String>(),
      groupKey: map['groupKey'] as String,
      name: map['name'] as String,
    );
  }
}

