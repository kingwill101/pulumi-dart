// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkEdgeSecurityService.
class GetNetworkEdgeSecurityServiceComputeV1Result {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService. An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a NetworkEdgeSecurityService.
  final String fingerprint;
  /// [Output only] Type of the resource. Always compute#networkEdgeSecurityService for NetworkEdgeSecurityServices
  final String kind;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  /// URL of the region where the resource resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  final String region;
  /// The resource URL for the network edge security service associated with this network edge security service.
  final String securityPolicy;
  /// Server-defined URL for the resource.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// Creates a new [GetNetworkEdgeSecurityServiceComputeV1Result].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a NetworkEdgeSecurityService. An up-to-date fingerprint must be provided in order to update the NetworkEdgeSecurityService, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a NetworkEdgeSecurityService.
  /// [kind] [Output only] Type of the resource. Always compute#networkEdgeSecurityService for NetworkEdgeSecurityServices
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [region] URL of the region where the resource resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  /// [securityPolicy] The resource URL for the network edge security service associated with this network edge security service.
  /// [selfLink] Server-defined URL for the resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  const GetNetworkEdgeSecurityServiceComputeV1Result({
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.region,
    required this.securityPolicy,
    required this.selfLink,
    required this.selfLinkWithId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'kind': kind,
      'name': name,
      'region': region,
      'securityPolicy': securityPolicy,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
    };
  }

  factory GetNetworkEdgeSecurityServiceComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetNetworkEdgeSecurityServiceComputeV1Result(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      securityPolicy: map['securityPolicy'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
    );
  }
}

