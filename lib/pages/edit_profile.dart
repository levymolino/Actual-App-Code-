import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';


class EditMyProfWidget extends StatefulWidget {
  const EditMyProfWidget({Key? key}) : super(key: key); //EDITED

  @override
  _EditMyProfWidgetState createState() => _EditMyProfWidgetState();
}

class _EditMyProfWidgetState extends State<EditMyProfWidget> {
  String uploadedFileUrl = '';
  // TextEditingController fullnameController;
  // TextEditingController homeAddressController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // fullnameController = TextEditingController();
    // homeAddressController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF4B39EF),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: const Color(0xFF4B39EF),
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: Image.asset(
                  'assets/images/wavesMiddle@3x.png',
                ).image,
              ),
            ),
            child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 30),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/quiztorylogo.png',
                              width: 300,
                              height: 100,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 70, 0, 30),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProfileAvatar(
//                  'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4',
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWtMDksH9GzFdMinyAkGbtLJNx6xynLETTNN5akjxirL3QD5Rj',
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          placeHolder: (context, url) => const SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(),
                          ),
                          radius: 90,
                          backgroundColor: Colors.transparent,
                          borderWidth: 10,
                          initialsText: const Text(
                            "AD",
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          borderColor: Colors.red,
                          imageFit: BoxFit.fitHeight,
                          elevation: 5.0,
                          cacheImage: true,
                          showInitialTextAbovePicture: false,
                        ),
                      ],
                    ),
                  ),
                      // Row(
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // children: [
                      // InkWell(
                      // onTap: () async {
                      // final selectedMedia =
                      // await selectMediaWithSourceBottomSheet(
                      // context: context,
                      // allowPhoto: true,
                      // backgroundColor: FlutterFlowTheme.primaryColor,
                      // textColor: FlutterFlowTheme.tertiaryColor,
                      // );
                      // if (selectedMedia != null &&
                      // validateFileFormat(
                      // selectedMedia.storagePath, context)) {
                      // showUploadMessage(context, 'Uploading file...',
                      // showLoading: true);
                      // final downloadUrl = await uploadData(
                      // selectedMedia.storagePath, selectedMedia.bytes);
                      // ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      // if (downloadUrl != null) {
                      // setState(() => uploadedFileUrl = downloadUrl);
                      // showUploadMessage(context, 'Success!');
                      // } else {
                      // showUploadMessage(
                      // context, 'Failed to upload media');
                      // return;
                      // }
                      // }
                      // },
                      // child: Container(
                      // width: 100,
                      // height: 100,
                      // decoration: BoxDecoration(
                      // color: Color(0xFFEEEEEE),
                      // image: DecorationImage(
                      // fit: BoxFit.cover,
                      // image: Image.asset(
                      // 'assets/images/add-user.png',
                      // ).image,
                      // ),
                      // shape: BoxShape.circle,
                      // ),
                      // child: Container(
                      // width: 120,
                      // height: 120,
                      // clipBehavior: Clip.antiAlias,
                      // decoration: BoxDecoration(
                      // shape: BoxShape.circle,
                      // ),
                      // child: CachedNetworkImage(
                      // imageUrl: valueOrDefault<String>(
                      // uploadedFileUrl,
                      // 'https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY',
                      // ),
                      // fit: BoxFit.fill,
                      // ),
                      // ),
                      // ),
                      // )
                      // ],
                      // ),
                      Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: TextFormField(
                          // controller: fullnameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            labelStyle: const TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            hintText: 'Enter your name here...',
                            hintStyle: const TextStyle(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF95A1AC),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFFDBE2E7),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                          ),
                          style: const TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF2B343A),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                    ],
                  ),
                ))));
  }
}
