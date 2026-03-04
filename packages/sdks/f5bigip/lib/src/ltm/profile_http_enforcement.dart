// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProfileHttpEnforcement {
  /// Specifies which HTTP methods count as being known. Removing RFC-defined methods from this list will cause the HTTP filter to not recognize them. Default value is [CONNECT DELETE GET HEAD LOCK OPTIONS POST PROPFIND PUT TRACE UNLOCK].If no value is specified while creating, then default value will be assigned by BigIP. In order to remove it, [""] list is to be passed. If known_methods is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value , we need to pass [CONNECT DELETE GET HEAD LOCK OPTIONS POST PROPFIND PUT TRACE UNLOCK] explicitly.
  final pulumi.Input<List<String>>? knownMethods;

  /// Specifies the maximum number of headers allowed in HTTP request/response. The default is 64 headers.If no value is specified while creating, then default value will be assigned by BigIP. If max_header_count is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "64" explicitly.
  final pulumi.Input<int>? maxHeaderCount;

  /// Specifies the maximum header size. The default value is 32768. If no string is specified while creating, then default value will be assigned by BigIP. If max_header_size is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "32768" explicitly.
  final pulumi.Input<int>? maxHeaderSize;

  /// Specifies whether to allow, reject or switch to pass-through mode when an unknown HTTP method is parsed. Default value is "allow". If no string is specified while creating, then default value will be assigned by BigIP. If unknown_method is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "allow" explicitly.
  final pulumi.Input<String>? unknownMethod;

  /// Creates a new [ProfileHttpEnforcement].
  /// [knownMethods] Specifies which HTTP methods count as being known. Removing RFC-defined methods from this list will cause the HTTP filter to not recognize them. Default value is [CONNECT DELETE GET HEAD LOCK OPTIONS POST PROPFIND PUT TRACE UNLOCK].If no value is specified while creating, then default value will be assigned by BigIP. In order to remove it, [""] list is to be passed. If known_methods is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value , we need to pass [CONNECT DELETE GET HEAD LOCK OPTIONS POST PROPFIND PUT TRACE UNLOCK] explicitly.
  /// [maxHeaderCount] Specifies the maximum number of headers allowed in HTTP request/response. The default is 64 headers.If no value is specified while creating, then default value will be assigned by BigIP. If max_header_count is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "64" explicitly.
  /// [maxHeaderSize] Specifies the maximum header size. The default value is 32768. If no string is specified while creating, then default value will be assigned by BigIP. If max_header_size is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "32768" explicitly.
  /// [unknownMethod] Specifies whether to allow, reject or switch to pass-through mode when an unknown HTTP method is parsed. Default value is "allow". If no string is specified while creating, then default value will be assigned by BigIP. If unknown_method is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "allow" explicitly.
  ProfileHttpEnforcement({
    this.knownMethods,
    this.maxHeaderCount,
    this.maxHeaderSize,
    this.unknownMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knownMethods': ?knownMethods,
      'maxHeaderCount': ?maxHeaderCount,
      'maxHeaderSize': ?maxHeaderSize,
      'unknownMethod': ?unknownMethod,
    };
  }

  factory ProfileHttpEnforcement.fromMap(Map<String, dynamic> map) {
    return ProfileHttpEnforcement(
      knownMethods: (() {
        final guardedValue = map['knownMethods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxHeaderCount: (() {
        final guardedValue = map['maxHeaderCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxHeaderSize: (() {
        final guardedValue = map['maxHeaderSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      unknownMethod: (() {
        final guardedValue = map['unknownMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
