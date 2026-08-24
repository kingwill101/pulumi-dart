import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_asset_archive/index.dart' as pulumi_asset_archive_index;

class GeneratedStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  GeneratedStack() {
    final ass = pulumi_asset_archive_index.AssetResource('ass', args: pulumi_asset_archive_index.AssetResourceArgs(value: pulumi.Input.asInput(pulumi.FileAsset('../test.txt')), ));
    final arc = pulumi_asset_archive_index.ArchiveResource('arc', args: pulumi_asset_archive_index.ArchiveResourceArgs(value: pulumi.Input.asInput(pulumi.FileArchive('../archive.tar')), ));
    final dir = pulumi_asset_archive_index.ArchiveResource('dir', args: pulumi_asset_archive_index.ArchiveResourceArgs(value: pulumi.Input.asInput(pulumi.FileArchive('../folder')), ));
    final assarc = pulumi_asset_archive_index.ArchiveResource('assarc', args: pulumi_asset_archive_index.ArchiveResourceArgs(value: pulumi.Input.asInput(pulumi.AssetArchive({'string': pulumi.StringAsset('file contents'), 'file': pulumi.FileAsset('../test.txt'), 'folder': pulumi.FileArchive('../folder'), 'archive': pulumi.FileArchive('../archive.tar')})), ));
    final remoteass = pulumi_asset_archive_index.AssetResource('remoteass', args: pulumi_asset_archive_index.AssetResourceArgs(value: pulumi.Input.asInput(pulumi.RemoteAsset('https://raw.githubusercontent.com/pulumi/pulumi/7b0eb7fb10694da2f31c0d15edf671df843e0d4c/cmd/pulumi-test-language/tests/testdata/l2-resource-asset-archive/test.txt')), ));
    final remotearc = pulumi_asset_archive_index.ArchiveResource('remotearc', args: pulumi_asset_archive_index.ArchiveResourceArgs(value: pulumi.Input.asInput(pulumi.RemoteArchive('https://raw.githubusercontent.com/pulumi/pulumi/7b0eb7fb10694da2f31c0d15edf671df843e0d4c/cmd/pulumi-test-language/tests/testdata/l2-resource-asset-archive/archive.tar')), ));

    _outputProperties = [
      pulumi.OutputProperty('assetOutput', pulumi.output(pulumi.FileAsset('../test.txt')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('archiveOutput', pulumi.output(pulumi.FileArchive('../archive.tar')).apply<Object?>((value) => value)),
      pulumi.OutputProperty('assetList', pulumi.output([pulumi.FileAsset('../test.txt'), pulumi.StringAsset('file contents')]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('archiveList', pulumi.output([pulumi.FileArchive('../archive.tar'), pulumi.FileArchive('../folder')]).apply<Object?>((value) => value)),
      pulumi.OutputProperty('assetMap', pulumi.output({'file': pulumi.FileAsset('../test.txt'), 'string': pulumi.StringAsset('file contents')}).apply<Object?>((value) => value)),
      pulumi.OutputProperty('archiveMap', pulumi.output({'tar': pulumi.FileArchive('../archive.tar'), 'folder': pulumi.FileArchive('../folder')}).apply<Object?>((value) => value)),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => GeneratedStack());
}
