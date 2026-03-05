import 'package:pulumi/pulumi.dart' as pulumi;
import 'sfdc_instance_args.dart';

/// Creates an sfdc instance record. Store the sfdc instance in Spanner. Returns the sfdc instance.
/// Auto-naming is currently not supported for this resource.
class SfdcInstance extends pulumi.CustomResource {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  late final pulumi.Output<List<String>> authConfigId;
  /// Time when the instance is created
  late final pulumi.Output<String> createTime;
  /// Time when the instance was deleted. Empty if not deleted.
  late final pulumi.Output<String> deleteTime;
  /// A description of the sfdc instance.
  late final pulumi.Output<String> description;
  /// User selected unique name/alias to easily reference an instance.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> productId;
  late final pulumi.Output<String> project;
  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  late final pulumi.Output<String> serviceAuthority;
  /// The SFDC Org Id. This is defined in salesforce.
  late final pulumi.Output<String> sfdcOrgId;
  /// Time when the instance was last updated
  late final pulumi.Output<String> updateTime;

  /// Creates a new [SfdcInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SfdcInstance]. {@macro pulumi_integrations_v1alpha_sfdc_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SfdcInstance(
    String name, {
    SfdcInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:SfdcInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authConfigId = registerOutput<List<String>>('authConfigId');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    productId = registerOutput<String>('productId');
    project = registerOutput<String>('project');
    serviceAuthority = registerOutput<String>('serviceAuthority');
    sfdcOrgId = registerOutput<String>('sfdcOrgId');
    updateTime = registerOutput<String>('updateTime');
  }
}
