// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'check_set_response.dart';
import 'image_allowlist_response.dart';

/// A Binary Authorization policy for a GKE cluster. This is one type of policy that can occur as a `PlatformPolicy`.
class GkePolicyResponse {
  /// Optional. The `CheckSet` objects to apply, scoped by namespace or namespace and service account. Exactly one `CheckSet` will be evaluated for a given Pod (unless the list is empty, in which case the behavior is "always allow"). If multiple `CheckSet` objects have scopes that match the namespace and service account of the Pod being evaluated, only the `CheckSet` with the MOST SPECIFIC scope will match. `CheckSet` objects must be listed in order of decreasing specificity, i.e. if a scope matches a given service account (which must include the namespace), it must come before a `CheckSet` with a scope matching just that namespace. This property is enforced by server-side validation. The purpose of this restriction is to ensure that if more than one `CheckSet` matches a given Pod, the `CheckSet` that will be evaluated will always be the first in the list to match (because if any other matches, it must be less specific). If `check_sets` is empty, the default behavior is to allow all images. If `check_sets` is non-empty, the last `check_sets` entry must always be a `CheckSet` with no scope set, i.e. a catchall to handle any situation not caught by the preceding `CheckSet` objects.
  final pulumi.Input<List<CheckSetResponse>> checkSets;
  /// Optional. Images exempted from this policy. If any of the patterns match the image being evaluated, the rest of the policy will not be evaluated.
  final pulumi.Input<ImageAllowlistResponse> imageAllowlist;

  /// Creates a new [GkePolicyResponse].
  /// [checkSets] Optional. The `CheckSet` objects to apply, scoped by namespace or namespace and service account. Exactly one `CheckSet` will be evaluated for a given Pod (unless the list is empty, in which case the behavior is "always allow"). If multiple `CheckSet` objects have scopes that match the namespace and service account of the Pod being evaluated, only the `CheckSet` with the MOST SPECIFIC scope will match. `CheckSet` objects must be listed in order of decreasing specificity, i.e. if a scope matches a given service account (which must include the namespace), it must come before a `CheckSet` with a scope matching just that namespace. This property is enforced by server-side validation. The purpose of this restriction is to ensure that if more than one `CheckSet` matches a given Pod, the `CheckSet` that will be evaluated will always be the first in the list to match (because if any other matches, it must be less specific). If `check_sets` is empty, the default behavior is to allow all images. If `check_sets` is non-empty, the last `check_sets` entry must always be a `CheckSet` with no scope set, i.e. a catchall to handle any situation not caught by the preceding `CheckSet` objects.
  /// [imageAllowlist] Optional. Images exempted from this policy. If any of the patterns match the image being evaluated, the rest of the policy will not be evaluated.
  const GkePolicyResponse({
    required this.checkSets,
    required this.imageAllowlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkSets': pulumi.Input.mapInputValue<List<CheckSetResponse>, List<Map<String, dynamic>>>(checkSets, (value) => pulumi.Input.encodeList<CheckSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageAllowlist': pulumi.Input.mapInputValue<ImageAllowlistResponse, Map<String, dynamic>>(imageAllowlist, (value) => value.toMap()),
    };
  }

  factory GkePolicyResponse.fromMap(Map<String, dynamic> map) {
    return GkePolicyResponse(
      checkSets: pulumi.Input.fromValue(pulumi.Input.decodeList<CheckSetResponse>(map['checkSets']!, (value) => CheckSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
      imageAllowlist: pulumi.Input.fromValue(ImageAllowlistResponse.fromMap((map['imageAllowlist']! as Map).cast<String, dynamic>())),
    );
  }
}
