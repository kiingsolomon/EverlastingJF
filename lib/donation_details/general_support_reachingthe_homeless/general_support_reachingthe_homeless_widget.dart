import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'general_support_reachingthe_homeless_model.dart';
export 'general_support_reachingthe_homeless_model.dart';

class GeneralSupportReachingtheHomelessWidget extends StatefulWidget {
  const GeneralSupportReachingtheHomelessWidget({Key? key}) : super(key: key);

  @override
  _GeneralSupportReachingtheHomelessWidgetState createState() =>
      _GeneralSupportReachingtheHomelessWidgetState();
}

class _GeneralSupportReachingtheHomelessWidgetState
    extends State<GeneralSupportReachingtheHomelessWidget> {
  late GeneralSupportReachingtheHomelessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => GeneralSupportReachingtheHomelessModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          'Program Details',
          style: FlutterFlowTheme.of(context).headlineMedium,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/images/general-support.png',
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 230.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'General Support & Reaching the Homeless',
                    style: FlutterFlowTheme.of(context).headlineMedium,
                  ),
                  SizedBox(
                    width: 80.0,
                    child: Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  Text(
                    'We also provide training, individualized coaching and support, and numerous group activities to supplement the one-to-one support. Also, giving Homeless People Grocery Store Gift Cards, Socks, Hand Warmers, Unscented Baby Wipes Tampons, etc',
                    style: FlutterFlowTheme.of(context).labelLarge,
                  ),
                  Divider(
                    height: 32.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Everlasting Joy Foundation',
                      style: FlutterFlowTheme.of(context).labelMedium,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 12.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/Avatar_Group.png',
                          width: 72.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Text(
                        '40+ volunteers',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0x9957636C),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    await launchURL('https://theeverlastingjoyfoundation.org/');
                  },
                  text: 'Make a Donation',
                  options: FFButtonOptions(
                    width: 300,
                    height: 60,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle:
                    FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFFF5DA01),
                    ),
                    elevation: 3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
