import 'package:assa/models/product_data.dart';
import 'package:assa/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class ProductWidget extends StatefulWidget {
  ProductModel product;
  int quentity = 1;
  ProductWidget(this.product, {super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  sumofprice() {
    // double total = widget.product.price * ;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.network(widget.product.image ?? ''),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'بيتزا بالخضار',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'بيتزا بالخضار مميزة',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
              ),
              Row(children: [
                IconButton(
                    onPressed: () {
                      setState(() {});
                      widget.quentity++;
                      if (widget.quentity >= 10) widget.quentity = 10;
                    },
                    icon: const Icon(Icons.add)),
                Text("${widget.quentity}"),
                IconButton(
                    onPressed: () {
                      setState(() {});
                      widget.quentity--;
                      if (widget.quentity <= 1) widget.quentity = 1;
                    },
                    icon: const Icon(Icons.remove)),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("${widget.product.price ?? ''}"),
                ),
              ]),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 7),
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'اختيارك من الحجم : (اختياري)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text('اختر من القائمة',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          ...widget.product.extintion?.map((e) {
                                return Checkbox(
                                    value: false, onChanged: (boll) {});
                              }).toList() ??
                              [],
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          ...widget.product.extintion?.map((e) {
                                return Text(
                                  "$e" ?? '',
                                  style: const TextStyle(fontSize: 20),
                                );
                              }).toList() ??
                              [],
                        ],
                      ),
                    ],
                  )
                ]),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 7),
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'اختيارك من الاضافات : (اختياري)',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text('اختر من القائمة',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          ...widget.product.size?.map((e) {
                                return Checkbox(
                                    value: false, onChanged: (boll) {});
                              }).toList() ??
                              [],
                        ],
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Column(
                        children: [
                          ...widget.product.size?.map((e) {
                                return Text(
                                  "$e" ?? '',
                                  style: const TextStyle(fontSize: 20),
                                );
                              }).toList() ??
                              [],
                        ],
                      ),
                    ],
                  )
                ]),
          ),
        ),
        Container(
          color: Colors.white,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text(
                'اضافة الى السلة',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
