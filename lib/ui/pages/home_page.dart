part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              await AuthService().clearLocalStorage();
            },
            icon: Icon(Icons.logout),
          ),
        ],
        centerTitle: true,
        backgroundColor: redColor,
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  UserDataView(
                      title: 'User ID',
                      data: state.user.data!.userId.toString()),
                  UserDataView(
                      title: 'Username',
                      data: state.user.data!.userName.toString()),
                  UserDataView(
                      title: 'Level ID',
                      data: state.user.data!.levelId.toString()),
                  UserDataView(
                      title: 'Level Name',
                      data: state.user.data!.levelName.toString()),
                  UserDataView(
                      title: 'Store Name',
                      data: state.user.data!.storeName.toString()),
                  UserDataView(
                      title: 'Store Address',
                      data: state.user.data!.storeAddress.toString()),
                  UserDataView(
                      title: 'Store Phone',
                      data: state.user.data!.storePhone.toString()),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
