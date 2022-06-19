import 'package:flutter/material.dart';

class ShowTicket extends StatelessWidget {
  final String judulFilm;
  final String tempatNonton;
  final String jamTayang;
  final String hargaFilm;
  final Function? onDelete;

  ShowTicket(this.judulFilm, this.tempatNonton, this.jamTayang, this.hargaFilm,
      {this.onDelete});

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      margin: EdgeInsets.only(
        top: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Column(
        children: [
          Text(
            judulFilm,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          Text(tempatNonton),
          Text(jamTayang),
          Text(hargaFilm),
          SizedBox(
            height: 40,
            width: 60,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: Colors.red[900],
                ),
                child: const Center(
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (onDelete != null) onDelete!();
                }),
          )
        ],
      ),
    );
  }
}
