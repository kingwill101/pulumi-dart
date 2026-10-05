import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_stored_info_type_version_response.dart';
import 'stored_info_type_args.dart';

/// Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.
/// Auto-naming is currently not supported for this resource.
class StoredInfoType extends pulumi.CustomResource {
  /// Current version of the stored info type.
  late final pulumi.Output<GooglePrivacyDlpV2StoredInfoTypeVersionResponse> currentVersion;
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Pending versions of the stored info type. Empty if no versions are pending.
  late final pulumi.Output<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>> pendingVersions;
  late final pulumi.Output<String> project;

  /// Creates a new [StoredInfoType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StoredInfoType]. {@macro pulumi_dlp_v2_stored_info_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StoredInfoType(
    String name, {
    StoredInfoTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dlp/v2:StoredInfoType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    currentVersion = registerOutput<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>('currentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pendingVersions = registerOutput<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>>('pendingVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>(guardedValue, (value) => GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [StoredInfoType] resource.
  StoredInfoType.reference(String urn)
    : super(
        'google-native:dlp/v2:StoredInfoType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    currentVersion = registerOutput<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>('currentVersion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    pendingVersions = registerOutput<List<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>>('pendingVersions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GooglePrivacyDlpV2StoredInfoTypeVersionResponse>(guardedValue, (value) => GooglePrivacyDlpV2StoredInfoTypeVersionResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
  }
}
