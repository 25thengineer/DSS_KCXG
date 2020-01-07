library verilog;
use verilog.vl_types.all;
entity CtrlUnit is
    generic(
        ADDU            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        SUBU            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        ADD             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        SUB             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi0);
        \AND\           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        \OR\            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi1);
        \XOR\           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi0);
        \NOR\           : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1);
        SLT             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        SLTU            : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        \SRL\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        \SRA\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        \SLL\           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SLLV            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        SRLV            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        SRAV            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        JR              : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        JALR            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        MULT            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        MULTU           : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1);
        DIV             : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        DIVU            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi1);
        MFHI            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        MFLO            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0);
        MTHI            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi1);
        MTLO            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi1);
        BREAK           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1);
        SYSCALL         : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        TEQ             : vl_logic_vector(0 to 5) := (Hi1, Hi1, Hi0, Hi1, Hi0, Hi0);
        CLZ             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        MUL             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        BLTZ            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        BGEZ            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi1);
        \ERET\          : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0);
        MFC0            : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi0, Hi0, Hi0);
        \MTC0\          : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi0, Hi0);
        ADDI            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi0);
        ADDIU           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi0, Hi1);
        ANDI            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        ORI             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi0, Hi1);
        XORI            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi0);
        LW              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi1, Hi1);
        SW              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        BEQ             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0);
        BNE             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        BLEZ            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        BGTZ            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        SLTI            : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0);
        SLTIU           : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1);
        LUI             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        J               : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        JAL             : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        LB              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        LBU             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        LH              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi1);
        LHU             : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi0, Hi1, Hi0, Hi1);
        SB              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi0);
        SH              : vl_logic_vector(0 to 5) := (Hi1, Hi0, Hi1, Hi0, Hi0, Hi1);
        SPECIAL         : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        SPECIAL2        : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        REGIMM          : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        COP0            : vl_logic_vector(0 to 5) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        \_ADDU\         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        \_ADD\          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        \_SUBU\         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        \_SUB\          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        \_AND\          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        \_OR\           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        \_XOR\          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        \_NOR\          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        \_LUI\          : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        \_SLT\          : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi1);
        \_SLTU\         : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi1, Hi0);
        \_SRA\          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0);
        \_SLL\          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi1, Hi0);
        \_SRL\          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi1);
        \_SYSCALL\      : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        \_BREAK\        : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1);
        \_TEQ\          : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi1);
        SIGN            : vl_logic := Hi1;
        UNSIGN          : vl_logic := Hi0;
        ENA             : vl_logic := Hi1;
        DIS             : vl_logic := Hi0
    );
    port(
        instr           : in     vl_logic_vector(31 downto 0);
        rdata1          : in     vl_logic_vector(31 downto 0);
        rdata2          : in     vl_logic_vector(31 downto 0);
        pc              : in     vl_logic_vector(31 downto 0);
        ram_data        : in     vl_logic_vector(31 downto 0);
        hi              : in     vl_logic_vector(31 downto 0);
        lo              : in     vl_logic_vector(31 downto 0);
        alu_r           : in     vl_logic_vector(31 downto 0);
        cop_data        : in     vl_logic_vector(31 downto 0);
        mul_out         : in     vl_logic_vector(31 downto 0);
        exc_addr        : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        mtc0            : out    vl_logic;
        eret            : out    vl_logic;
        teq_exc         : out    vl_logic;
        mdu             : out    vl_logic_vector(2 downto 0);
        reg_wena        : out    vl_logic;
        ram_wena        : out    vl_logic;
        cause           : out    vl_logic_vector(3 downto 0);
        rs              : out    vl_logic_vector(4 downto 0);
        rt              : out    vl_logic_vector(4 downto 0);
        rd              : out    vl_logic_vector(4 downto 0);
        waddr           : out    vl_logic_vector(4 downto 0);
        wdata           : out    vl_logic_vector(31 downto 0);
        reg_data        : out    vl_logic_vector(31 downto 0);
        ram_addr        : out    vl_logic_vector(31 downto 0);
        pc_in           : out    vl_logic_vector(31 downto 0);
        alu_a           : out    vl_logic_vector(31 downto 0);
        alu_b           : out    vl_logic_vector(31 downto 0);
        alu_op          : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDU : constant is 1;
    attribute mti_svvh_generic_type of SUBU : constant is 1;
    attribute mti_svvh_generic_type of ADD : constant is 1;
    attribute mti_svvh_generic_type of SUB : constant is 1;
    attribute mti_svvh_generic_type of \AND\ : constant is 1;
    attribute mti_svvh_generic_type of \OR\ : constant is 1;
    attribute mti_svvh_generic_type of \XOR\ : constant is 1;
    attribute mti_svvh_generic_type of \NOR\ : constant is 1;
    attribute mti_svvh_generic_type of SLT : constant is 1;
    attribute mti_svvh_generic_type of SLTU : constant is 1;
    attribute mti_svvh_generic_type of \SRL\ : constant is 1;
    attribute mti_svvh_generic_type of \SRA\ : constant is 1;
    attribute mti_svvh_generic_type of \SLL\ : constant is 1;
    attribute mti_svvh_generic_type of SLLV : constant is 1;
    attribute mti_svvh_generic_type of SRLV : constant is 1;
    attribute mti_svvh_generic_type of SRAV : constant is 1;
    attribute mti_svvh_generic_type of JR : constant is 1;
    attribute mti_svvh_generic_type of JALR : constant is 1;
    attribute mti_svvh_generic_type of MULT : constant is 1;
    attribute mti_svvh_generic_type of MULTU : constant is 1;
    attribute mti_svvh_generic_type of DIV : constant is 1;
    attribute mti_svvh_generic_type of DIVU : constant is 1;
    attribute mti_svvh_generic_type of MFHI : constant is 1;
    attribute mti_svvh_generic_type of MFLO : constant is 1;
    attribute mti_svvh_generic_type of MTHI : constant is 1;
    attribute mti_svvh_generic_type of MTLO : constant is 1;
    attribute mti_svvh_generic_type of BREAK : constant is 1;
    attribute mti_svvh_generic_type of SYSCALL : constant is 1;
    attribute mti_svvh_generic_type of TEQ : constant is 1;
    attribute mti_svvh_generic_type of CLZ : constant is 1;
    attribute mti_svvh_generic_type of MUL : constant is 1;
    attribute mti_svvh_generic_type of BLTZ : constant is 1;
    attribute mti_svvh_generic_type of BGEZ : constant is 1;
    attribute mti_svvh_generic_type of \ERET\ : constant is 1;
    attribute mti_svvh_generic_type of MFC0 : constant is 1;
    attribute mti_svvh_generic_type of \MTC0\ : constant is 1;
    attribute mti_svvh_generic_type of ADDI : constant is 1;
    attribute mti_svvh_generic_type of ADDIU : constant is 1;
    attribute mti_svvh_generic_type of ANDI : constant is 1;
    attribute mti_svvh_generic_type of ORI : constant is 1;
    attribute mti_svvh_generic_type of XORI : constant is 1;
    attribute mti_svvh_generic_type of LW : constant is 1;
    attribute mti_svvh_generic_type of SW : constant is 1;
    attribute mti_svvh_generic_type of BEQ : constant is 1;
    attribute mti_svvh_generic_type of BNE : constant is 1;
    attribute mti_svvh_generic_type of BLEZ : constant is 1;
    attribute mti_svvh_generic_type of BGTZ : constant is 1;
    attribute mti_svvh_generic_type of SLTI : constant is 1;
    attribute mti_svvh_generic_type of SLTIU : constant is 1;
    attribute mti_svvh_generic_type of LUI : constant is 1;
    attribute mti_svvh_generic_type of J : constant is 1;
    attribute mti_svvh_generic_type of JAL : constant is 1;
    attribute mti_svvh_generic_type of LB : constant is 1;
    attribute mti_svvh_generic_type of LBU : constant is 1;
    attribute mti_svvh_generic_type of LH : constant is 1;
    attribute mti_svvh_generic_type of LHU : constant is 1;
    attribute mti_svvh_generic_type of SB : constant is 1;
    attribute mti_svvh_generic_type of SH : constant is 1;
    attribute mti_svvh_generic_type of SPECIAL : constant is 1;
    attribute mti_svvh_generic_type of SPECIAL2 : constant is 1;
    attribute mti_svvh_generic_type of REGIMM : constant is 1;
    attribute mti_svvh_generic_type of COP0 : constant is 1;
    attribute mti_svvh_generic_type of \_ADDU\ : constant is 1;
    attribute mti_svvh_generic_type of \_ADD\ : constant is 1;
    attribute mti_svvh_generic_type of \_SUBU\ : constant is 1;
    attribute mti_svvh_generic_type of \_SUB\ : constant is 1;
    attribute mti_svvh_generic_type of \_AND\ : constant is 1;
    attribute mti_svvh_generic_type of \_OR\ : constant is 1;
    attribute mti_svvh_generic_type of \_XOR\ : constant is 1;
    attribute mti_svvh_generic_type of \_NOR\ : constant is 1;
    attribute mti_svvh_generic_type of \_LUI\ : constant is 1;
    attribute mti_svvh_generic_type of \_SLT\ : constant is 1;
    attribute mti_svvh_generic_type of \_SLTU\ : constant is 1;
    attribute mti_svvh_generic_type of \_SRA\ : constant is 1;
    attribute mti_svvh_generic_type of \_SLL\ : constant is 1;
    attribute mti_svvh_generic_type of \_SRL\ : constant is 1;
    attribute mti_svvh_generic_type of \_SYSCALL\ : constant is 1;
    attribute mti_svvh_generic_type of \_BREAK\ : constant is 1;
    attribute mti_svvh_generic_type of \_TEQ\ : constant is 1;
    attribute mti_svvh_generic_type of SIGN : constant is 1;
    attribute mti_svvh_generic_type of UNSIGN : constant is 1;
    attribute mti_svvh_generic_type of ENA : constant is 1;
    attribute mti_svvh_generic_type of DIS : constant is 1;
end CtrlUnit;
