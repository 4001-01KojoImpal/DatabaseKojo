create table Pemilik (
	idPemilik	varchar2(10),
	namaPemilik varchar2(25),
	kontak_pemilik varchar2(12),

	CONSTRAINT PK_Pemilik PRIMARY KEY (idPemilik)
);

create table PenyediaStand(
	idStand	varchar2(10),
	NamaPStand varchar2(25),
	kontak_PStand	varchar2(12),
	idPemilik varchar2(10),

	CONSTRAINT PK_PenyediaStand PRIMARY KEY (idStand),
	CONSTRAINT FK_PenyediaStand FOREIGN KEY (idPemilik)
	REFERENCES Pemilik (idPemilik)
);

create table Supplier (
	idSupplier varchar2(10),
	namaSupplier varchar2(25),
	kontak_Supplier varchar2(12),
	idPemilik varchar2(10),

	CONSTRAINT PK_Supplier PRIMARY KEY (idSupplier),
	CONSTRAINT FK_Supplier FOREIGN KEY (idPemilik)
	REFERENCES Pemilik (idPemilik)
);

create table Keuangan (
	tglLaporan date,
	statusBisnis varchar2(8),
	jumMasukkan integer,
	jumKeluaran integer,
	modal integer,
	idPemilik varchar2(10)

	CONSTRAINT PK_Keuangan PRIMARY KEY (tglLaporan)
	CONSTRAINT FK_Keuangan FOREIGN KEY (idPemilik)
	REFERENCES Pemilik (idPemilik)
);

create table Pelanggan (
	idPelanggan varchar2(10),
	namaPelanggan varchar2 (25),
	idPemilik varchar2 (10),

	CONSTRAINT PK_Pelanggan PRIMARY KEY (idPelanggan),
	CONSTRAINT FK_Keuangan FOREIGN KEY (idPemilik)
	REFERENCES Pemilik (idPemilik)
);

create table Menu (
	idMenu varchar2(10),
	namaMenu varchar2(25),
	hargaMenu integer,
	idPemilik varchar2(10),
	
);