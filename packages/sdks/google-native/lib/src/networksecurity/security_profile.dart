import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_args.dart';
import 'threat_prevention_profile_response.dart';

/// Creates a new SecurityProfile in a given organization and location.
/// Auto-naming is currently not supported for this resource.
class SecurityProfile extends pulumi.CustomResource {
  /// Resource creation timestamp.
  late final pulumi.Output<String> createTime;

  /// Optional. An optional description of the profile. Max length 512 characters.
  late final pulumi.Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Optional. Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  late final pulumi.Output<String> securityProfileId;

  /// The threat prevention configuration for the SecurityProfile.
  late final pulumi.Output<ThreatPreventionProfileResponse>
  threatPreventionProfile;

  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  late final pulumi.Output<String> type;

  /// Last resource update timestamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SecurityProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityProfile]. {@macro pulumi_networksecurity_v1beta1_security_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityProfile(
    String name, {
    SecurityProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1beta1:SecurityProfile',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    securityProfileId = registerOutput<String>('securityProfileId');
    threatPreventionProfile = registerOutput<ThreatPreventionProfileResponse>(
      'threatPreventionProfile',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ThreatPreventionProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
