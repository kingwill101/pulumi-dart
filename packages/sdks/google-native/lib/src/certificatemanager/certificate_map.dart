import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_map_args.dart';
import 'gclb_target_response.dart';

/// Creates a new CertificateMap in a given project and location.
class CertificateMap extends pulumi.CustomResource {
  /// Required. A user-provided name of the certificate map.
  late final pulumi.Output<String> certificateMapId;
  /// The creation timestamp of a Certificate Map.
  late final pulumi.Output<String> createTime;
  /// One or more paragraphs of text description of a certificate map.
  late final pulumi.Output<String> description;
  /// A list of GCLB targets that use this Certificate Map. A Target Proxy is only present on this list if it's attached to a Forwarding Rule.
  late final pulumi.Output<List<GclbTargetResponse>> gclbTargets;
  /// Set of labels associated with a Certificate Map.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// The update timestamp of a Certificate Map.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CertificateMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateMap]. {@macro pulumi_certificatemanager_v1_certificate_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateMap(
    String name, {
    CertificateMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:CertificateMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['certificateMapId', 'location', 'project']).merge(options),
        ) {
    certificateMapId = registerOutput<String>('certificateMapId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    gclbTargets = registerOutput<List<GclbTargetResponse>>('gclbTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GclbTargetResponse>(guardedValue, (value) => GclbTargetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CertificateMap] resource.
  CertificateMap.reference(String urn)
    : super(
        'google-native:certificatemanager/v1:CertificateMap',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    certificateMapId = registerOutput<String>('certificateMapId');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    gclbTargets = registerOutput<List<GclbTargetResponse>>('gclbTargets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GclbTargetResponse>(guardedValue, (value) => GclbTargetResponse.fromMap((value as Map).cast<String, dynamic>())); });
    labels = registerOutput<Map<String, String>>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}
