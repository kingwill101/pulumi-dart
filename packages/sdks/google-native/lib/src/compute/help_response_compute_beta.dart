// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'help_link_response_compute_beta.dart';

/// Provides links to documentation or for performing an out of band action. For example, if a quota check failed with an error indicating the calling project hasn't enabled the accessed service, this can contain a URL pointing directly to the right place in the developer console to flip the bit.
class HelpResponseComputeBeta {
  /// URL(s) pointing to additional information on handling the current error.
  final pulumi.Input<List<HelpLinkResponseComputeBeta>> links;

  /// Creates a new [HelpResponseComputeBeta].
  /// [links] URL(s) pointing to additional information on handling the current error.
  HelpResponseComputeBeta({required this.links});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'links':
          pulumi.Input.mapInputValue<
            List<HelpLinkResponseComputeBeta>,
            List<Map<String, dynamic>>
          >(
            links,
            (value) =>
                pulumi.Input.encodeList<
                  HelpLinkResponseComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HelpResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HelpResponseComputeBeta(
      links: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HelpLinkResponseComputeBeta>(
          map['links']!,
          (value) => HelpLinkResponseComputeBeta.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
