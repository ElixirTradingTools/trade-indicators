defmodule TradeIndicators.Tests.Fixtures do
  alias TradeIndicators.Util, as: U
  alias Enum, as: E
  alias Map, as: M

  @msft_m1_2020_07_27 [
                        %{t: 1_595_620_860, o: 201.63, c: 201.63, h: 201.63, l: 201.63},
                        %{t: 1_595_852_820, o: 202.98, c: 202.98, h: 202.98, l: 202.98},
                        %{t: 1_595_853_360, o: 202.90, c: 202.90, h: 202.90, l: 202.90},
                        %{t: 1_595_854_020, o: 202.76, c: 202.76, h: 202.76, l: 202.76},
                        %{t: 1_595_854_200, o: 202.55, c: 202.55, h: 202.55, l: 202.55},
                        %{t: 1_595_855_580, o: 202.40, c: 202.40, h: 202.40, l: 202.40},
                        %{t: 1_595_856_300, o: 202.31, c: 202.31, h: 202.31, l: 202.31},
                        %{t: 1_595_856_480, o: 202.01, c: 201.93, h: 202.01, l: 201.62},
                        %{t: 1_595_856_540, o: 201.53, c: 201.59, h: 201.60, l: 201.53},
                        %{t: 1_595_856_600, o: 201.41, c: 202.46, h: 202.66, l: 201.41},
                        %{t: 1_595_856_660, o: 202.52, c: 201.94, h: 202.56, l: 201.88},
                        %{t: 1_595_856_720, o: 201.93, c: 201.54, h: 201.96, l: 201.54},
                        %{t: 1_595_856_780, o: 201.55, c: 201.90, h: 201.98, l: 201.42},
                        %{t: 1_595_856_840, o: 201.96, c: 202.22, h: 202.46, l: 201.95},
                        %{t: 1_595_856_900, o: 202.27, c: 202.62, h: 202.70, l: 202.27},
                        %{t: 1_595_856_960, o: 202.55, c: 202.22, h: 202.55, l: 201.94},
                        %{t: 1_595_857_020, o: 202.30, c: 202.55, h: 202.65, l: 202.29},
                        %{t: 1_595_857_080, o: 202.59, c: 202.68, h: 202.75, l: 202.50},
                        %{t: 1_595_857_140, o: 202.66, c: 202.44, h: 202.74, l: 202.11},
                        %{t: 1_595_857_200, o: 202.42, c: 202.56, h: 202.61, l: 202.20},
                        %{t: 1_595_857_260, o: 202.60, c: 202.56, h: 202.65, l: 202.42},
                        %{t: 1_595_857_320, o: 202.59, c: 202.60, h: 202.65, l: 202.54},
                        %{t: 1_595_857_380, o: 202.61, c: 202.47, h: 202.71, l: 202.44},
                        %{t: 1_595_857_440, o: 202.42, c: 202.55, h: 202.55, l: 202.13},
                        %{t: 1_595_857_500, o: 202.56, c: 202.54, h: 202.63, l: 202.48},
                        %{t: 1_595_857_560, o: 202.55, c: 202.44, h: 202.60, l: 202.31},
                        %{t: 1_595_857_620, o: 202.48, c: 202.43, h: 202.58, l: 202.42},
                        %{t: 1_595_857_680, o: 202.48, c: 202.47, h: 202.58, l: 202.37},
                        %{t: 1_595_857_740, o: 202.41, c: 202.76, h: 202.76, l: 202.39},
                        %{t: 1_595_857_800, o: 202.74, c: 202.69, h: 202.92, l: 202.69},
                        %{t: 1_595_857_860, o: 202.62, c: 202.74, h: 202.79, l: 202.62},
                        %{t: 1_595_857_920, o: 202.76, c: 202.88, h: 202.89, l: 202.70},
                        %{t: 1_595_857_980, o: 202.90, c: 203.02, h: 203.04, l: 202.84},
                        %{t: 1_595_858_040, o: 203.05, c: 203.18, h: 203.23, l: 202.95},
                        %{t: 1_595_858_100, o: 203.13, c: 203.10, h: 203.16, l: 203.03},
                        %{t: 1_595_858_160, o: 203.17, c: 203.22, h: 203.30, l: 203.16},
                        %{t: 1_595_858_220, o: 203.19, c: 203.21, h: 203.24, l: 203.09},
                        %{t: 1_595_858_280, o: 203.21, c: 202.96, h: 203.21, l: 202.90},
                        %{t: 1_595_858_340, o: 202.94, c: 202.82, h: 203.00, l: 202.82},
                        %{t: 1_595_858_400, o: 202.81, c: 202.80, h: 203.01, l: 202.80}
                      ]
                      |> E.map(&(&1 |> M.drop([:t]) |> U.decimals() |> M.put(:t, &1[:t])))

  @msft_m1_2020_08_17 [
                        %{t: 1_597_426_564, o: 208.69, c: 208.69, h: 208.69, l: 208.69},
                        %{t: 1_597_653_724, o: 209.36, c: 209.36, h: 209.36, l: 209.36},
                        %{t: 1_597_654_924, o: 209.55, c: 209.55, h: 209.55, l: 209.55},
                        %{t: 1_597_655_044, o: 209.55, c: 209.50, h: 209.55, l: 209.50},
                        %{t: 1_597_655_224, o: 209.50, c: 209.50, h: 209.50, l: 209.50},
                        %{t: 1_597_656_184, o: 209.50, c: 209.50, h: 209.50, l: 209.50},
                        %{t: 1_597_656_364, o: 209.50, c: 209.50, h: 209.50, l: 209.50},
                        %{t: 1_597_656_604, o: 209.60, c: 209.52, h: 209.68, l: 209.50},
                        %{t: 1_597_656_664, o: 209.60, c: 209.84, h: 210.16, l: 209.60},
                        %{t: 1_597_656_724, o: 209.80, c: 210.09, h: 210.12, l: 209.79},
                        %{t: 1_597_656_784, o: 210.09, c: 209.69, h: 210.11, l: 209.62},
                        %{t: 1_597_656_844, o: 209.78, c: 209.62, h: 210.00, l: 209.62},
                        %{t: 1_597_656_904, o: 209.75, c: 209.85, h: 209.89, l: 209.69},
                        %{t: 1_597_656_964, o: 209.86, c: 209.71, h: 209.91, l: 209.48},
                        %{t: 1_597_657_024, o: 209.72, c: 209.35, h: 209.72, l: 209.25},
                        %{t: 1_597_657_084, o: 209.51, c: 209.55, h: 209.72, l: 209.47},
                        %{t: 1_597_657_144, o: 209.56, c: 208.96, h: 209.70, l: 208.96},
                        %{t: 1_597_657_204, o: 209.03, c: 208.94, h: 209.25, l: 208.94},
                        %{t: 1_597_657_264, o: 208.97, c: 209.29, h: 209.32, l: 208.97},
                        %{t: 1_597_657_324, o: 209.31, c: 209.51, h: 209.56, l: 209.31},
                        %{t: 1_597_657_384, o: 209.49, c: 209.58, h: 209.71, l: 209.44},
                        %{t: 1_597_657_444, o: 209.59, c: 209.34, h: 209.63, l: 209.34},
                        %{t: 1_597_657_504, o: 209.30, c: 209.37, h: 209.49, l: 209.30},
                        %{t: 1_597_657_564, o: 209.54, c: 209.22, h: 209.54, l: 209.19},
                        %{t: 1_597_657_624, o: 209.35, c: 209.33, h: 209.40, l: 209.26},
                        %{t: 1_597_657_684, o: 209.33, c: 209.17, h: 209.34, l: 209.15},
                        %{t: 1_597_657_744, o: 209.17, c: 209.23, h: 209.37, l: 209.16},
                        %{t: 1_597_657_804, o: 209.34, c: 209.38, h: 209.50, l: 209.34},
                        %{t: 1_597_657_864, o: 209.44, c: 209.58, h: 209.63, l: 209.44},
                        %{t: 1_597_657_924, o: 209.64, c: 209.77, h: 209.82, l: 209.64},
                        %{t: 1_597_657_984, o: 209.78, c: 209.76, h: 209.79, l: 209.73},
                        %{t: 1_597_658_044, o: 209.77, c: 209.75, h: 209.80, l: 209.70},
                        %{t: 1_597_658_104, o: 209.76, c: 209.74, h: 209.78, l: 209.73},
                        %{t: 1_597_658_164, o: 209.72, c: 209.98, h: 209.98, l: 209.72},
                        %{t: 1_597_658_224, o: 209.98, c: 210.29, h: 210.29, l: 209.98},
                        %{t: 1_597_658_284, o: 210.33, c: 210.29, h: 210.33, l: 210.16},
                        %{t: 1_597_658_344, o: 210.28, c: 210.25, h: 210.37, l: 210.20},
                        %{t: 1_597_658_404, o: 210.36, c: 210.41, h: 210.50, l: 210.34}
                      ]
                      |> E.map(&(&1 |> M.drop([:t]) |> U.decimals() |> M.put(:t, &1[:t])))

  def fixture(:msft_m1_2020_07_27),
    do: @msft_m1_2020_07_27

  def fixture(:msft_m1_2020_08_17),
    do: @msft_m1_2020_08_17
end
