import 'package:flutter/material.dart';
import 'package:meal_monkey/constant/my_colors.dart';
import 'package:meal_monkey/presentation/widgets/components.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    _confirmPasswordController.dispose();
    _mobileNumberController.dispose();
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color.fromRGBO(74, 75, 76, 1)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Color.fromRGBO(74, 75, 76, 1),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            buildProfileHeader(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                buildTextForm(
                  controller: _nameController,
                  label: 'Name',
                ),
                buildTextForm(
                  controller: _emailController,
                  label: 'Email',
                ),
                buildTextForm(
                  controller: _mobileNumberController,
                  label: 'Mobile No',
                ),
                buildTextForm(
                  controller: _addressController,
                  label: 'Address',
                ),
                buildTextForm(
                  controller: _passwordController,
                  label: 'Password',
                ),
                buildTextForm(
                  controller: _confirmPasswordController,
                  label: 'Confirm Password',
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 20,
                ),
                buildButton(
                    x: () {},
                    title: 'Save',
                    borderColor: myOrange,
                    textColor: Colors.white,
                    bgColor: myOrange),
                SizedBox(
                  height: 120,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileHeader() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/moataz.jpg'),
                  radius: 50,
                ),
              ],
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: myOrange,
                    size: 14,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(color: myOrange, fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Hi There Moataz !',
              style: TextStyle(
                  color: myGrey, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Sign Out',
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
            ),
          ],
        ),
      );
}
