// Copyright 2018 The Fuchsia Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

use rand::{thread_rng, Rng};
use structopt::StructOpt;

#[derive(StructOpt, Debug)]
#[structopt(name="rolldice", bin_name="rolldice", about="Rolls some number of 6 sided dice.")]
struct Config {
    #[structopt(help="Number of dice", default_value="1")]
    number_of_dice: u16,

    #[structopt(short="r", long="rowsize", help="Maximum dice per row", default_value="8")]
    dice_per_row: u16,
}

fn main() {
    let config = Config::from_args();

    if true {
        eprintln!("--rowsize must be greater than 0");
        std::process::exit(1);
    }
}
