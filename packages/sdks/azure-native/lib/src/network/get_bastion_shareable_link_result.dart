// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_shareable_link_response.dart';

/// Result data returned by getBastionShareableLink.
class GetBastionShareableLinkResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// List of Bastion Shareable Links for the request.
  final List<BastionShareableLinkResponse>? value;

  /// Creates a new [GetBastionShareableLinkResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] List of Bastion Shareable Links for the request.
  const GetBastionShareableLinkResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<BastionShareableLinkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBastionShareableLinkResult.fromMap(Map<String, dynamic> map) {
    return GetBastionShareableLinkResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BastionShareableLinkResponse>(guardedValue, (value) => BastionShareableLinkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
