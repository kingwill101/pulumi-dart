import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_list_args.dart';

/// Creates a new UrlList in a given project and location.
class UrlList extends pulumi.CustomResource {
  /// Time when the security policy was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Free-text description of the resource.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;

  /// Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlLists/{url_list} url_list should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Time when the security policy was updated.
  late final pulumi.Output<String> updateTime;

  /// Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "url_list".
  late final pulumi.Output<String> urlListId;

  /// FQDNs and URLs.
  late final pulumi.Output<List<String>> values;

  /// Creates a new [UrlList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UrlList]. {@macro pulumi_networksecurity_v1_url_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UrlList(
    String name, {
    UrlListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:networksecurity/v1:UrlList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    urlListId = registerOutput<String>('urlListId');
    values = registerOutput<List<String>>('values');
  }
}
